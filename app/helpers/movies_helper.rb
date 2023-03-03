module MoviesHelper
    def full_poster_url(path)
        "https://image.tmdb.org/t/p/w500/#{path}"
    end

    def placeholder_post_image
        <<~EOS
        <svg class="bd-placeholder-img card-img-top" width="100%"  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
        EOS
    end

    def render_image(path)
        path ? image_tag(full_poster_url(path), class: 'card-img-top') : placeholder_post_image.html_safe
    end
end
