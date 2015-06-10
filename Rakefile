task(:compile) do
  `slimrb views/index.slim > public/index.html`
  `slimrb views/portfolio.slim > public/portfolio.html`

  `scss -t compressed assets/stylesheets/application.scss \
                      public/assets/stylesheets/application.css`
end

