module MoviesHelper
+
+  def responsibles_projects(projects)
+    content_tag :ul do
+      projects.collect do |a|
+        concat content_tag(:li, a.name)
+      end  
+    end
+  end
 end