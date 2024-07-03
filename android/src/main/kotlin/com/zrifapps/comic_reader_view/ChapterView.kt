package com.zrifapps.comic_reader_view

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.*
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import io.flutter.plugin.platform.PlatformView

internal class ChapterView(context: Context, id: Int, creationParams: Map<String?, Any?>?) : PlatformView {
    private val recyclerView: PinchRecyclerView
    private val imageUrls: List<String> // Assuming creationParams contains URLs of images

    override fun getView(): View {
        return recyclerView
    }

    override fun dispose() {}

    init {
        val inflater = LayoutInflater.from(context)
        recyclerView = inflater.inflate(R.layout.activity_chapter_view, null) as PinchRecyclerView
        recyclerView.layoutManager = LinearLayoutManager(context)

        // Example: Extracting image URLs from creationParams
        imageUrls = creationParams?.get("imageUrls") as? List<String> ?: emptyList()

        // Setting up the adapter
        recyclerView.adapter = ImageAdapter(context, imageUrls)
    }
}