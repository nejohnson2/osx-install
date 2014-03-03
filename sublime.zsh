$sublime_support_dir='~/Library/Application Support/Sublime Text 3/'
pushd ~/.sublime
for f in **/*(^/); do
    echo ln -fs ${f} ${(q)sublime_support_dir}/${(q)f}
done
popd