package rs.raf.rma.nativno

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val note = findViewById<EditText>(R.id.note)
        val savedNote = findViewById<TextView>(R.id.savedNote)
        findViewById<Button>(R.id.save).setOnClickListener {
            savedNote.text = note.text
        }
    }
}
