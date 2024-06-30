package com.example.comic_reader_view

import android.content.Context
import android.graphics.Color
import android.os.Handler
import android.view.View
import android.widget.*
import androidx.core.os.HandlerCompat
import com.bumptech.glide.Glide
import io.flutter.plugin.platform.PlatformView
import com.bumptech.glide.request.target.Target

internal class NativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?) : PlatformView {
    private val scrollView: ScrollView
    private val imageUrls: List<String> // Assuming creationParams contains URLs of images

    override fun getView(): View {
        return scrollView
    }

    override fun dispose() {}

    init {
        scrollView = ScrollView(context)
        val linearLayout = LinearLayout(context)
        linearLayout.orientation = LinearLayout.VERTICAL
        scrollView.addView(linearLayout)

        // Example: Extracting image URLs from creationParams
        imageUrls = creationParams?.get("imageUrls") as? List<String> ?: emptyList()

        // Adding ImageViews dynamically
        for (imageUrl in imageUrls) {
            val imageView = ImageView(context)
            imageView.setBackgroundColor(Color.TRANSPARENT)

            // Load image using Glide
            Glide.with(context)
                .load(imageUrl)
                .dontAnimate()  // Disable animations
                .override(Target.SIZE_ORIGINAL)  // Load the original size of the image
                .into(imageView)

            // Adjust image view properties to match parent width and maintain aspect ratio
            imageView.layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
            imageView.scaleType = ImageView.ScaleType.FIT_CENTER
            imageView.adjustViewBounds = true  // Ensure image adjusts bounds to maintain aspect ratio

            linearLayout.addView(imageView)
        }

        scrollView.setBackgroundColor(Color.WHITE)
    }
}