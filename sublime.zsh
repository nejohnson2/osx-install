sublime_support_dir="${HOME}/Library/Application Support/Sublime Text 3/"
pushd ~/.sublime
for f in **/*(^/); do
    ln -fs ${(q)f} ${(q)sublime_support_dir}/${(q)f}
done
popd