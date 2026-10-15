import momoeLibrarySST
import sys

suffix = sys.argv[1] #thin_name

save_ts_nc("20250111", "20250430", suffix)

print(f"Completed {suffix}")
