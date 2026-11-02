from momoeLibrarySST import save_ts_nc

ds, filename = save_ts_nc("20250101", "20250301")

print(ds)
print(f"Created: {filename}")
