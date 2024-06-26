#!/bin/bash

# NOTE: I know this can be made better but I have no Idea how :D

echo "Clean Up Started."
echo "This might take a bit..."

for file in ./*/*; do
    if [[ $file == *".inc"* ]]; then
        rm $file
    fi
done

for file in ./*/*/*/*; do
    if [[ $file == *".inf"* ]]; then
        if grep -q "AUTOGENERATED BY UEFIReader" $file; then
            sed -i 1,6d $file
        fi

        if grep -q "INF_VERSION    =" $file; then
            sed -i -e 's/INF_VERSION    =/INF_VERSION                    =/g' $file
        fi

        if grep -q "BASE_NAME      =" $file; then
            sed -i -e 's/BASE_NAME      =/BASE_NAME                      =/g' $file
        fi

        if grep -q "FILE_GUID      =" $file; then
            sed -i -e 's/FILE_GUID      =/FILE_GUID                      =/g' $file
        fi

        if grep -q "MODULE_TYPE    =" $file; then
            sed -i -e 's/MODULE_TYPE    =/MODULE_TYPE                    =/g' $file
        fi

        if grep -q "VERSION_STRING =" $file; then
            sed -i -e 's/VERSION_STRING =/VERSION_STRING                 =/g' $file
        fi

        if grep -q "ENTRY_POINT    =" $file; then
            sed -i -e 's/ENTRY_POINT    =/ENTRY_POINT                    =/g' $file
        fi

        if grep -q "   RAW|" $file; then
            sed -i -e 's/   RAW|/  RAW|/g' $file
        fi

        if grep -q "   TE|" $file; then
            sed -i -e 's/   TE|/  TE|/g' $file
        fi

        if grep -q "   DXE_DEPEX|" $file; then
            sed -i -e 's/   DXE_DEPEX|/  DXE_DEPEX|/g' $file
        fi

        if grep -q "   PE32|" $file; then
            sed -i -e 's/   PE32|/  PE32|/g' $file
        fi

        if grep -q "# AUTOGEN ENDS" $file; then
            if ! grep -q "Depex" $file; then
                sed -i -e :a -e '$d;N;2,3ba' -e 'P;D' $file
            else
                sed -i -e :a -e '$d;N;2,2ba' -e 'P;D' $file
            fi
        fi

        if ! grep -q "Depex" $file; then
            if grep -q "DXE_DRIVER" $file; then
                sed -i -e 's/DXE_DRIVER/UEFI_DRIVER/g' $file
            fi
        fi
    fi
done

for file in ./*/*/*/*/*; do
    if [[ $file == *".inf"* ]]; then
        if grep -q "AUTOGENERATED BY UEFIReader" $file; then
            sed -i 1,6d $file
        fi

        if grep -q "INF_VERSION    =" $file; then
            sed -i -e 's/INF_VERSION    =/INF_VERSION                    =/g' $file
        fi

        if grep -q "BASE_NAME      =" $file; then
            sed -i -e 's/BASE_NAME      =/BASE_NAME                      =/g' $file
        fi

        if grep -q "FILE_GUID      =" $file; then
            sed -i -e 's/FILE_GUID      =/FILE_GUID                      =/g' $file
        fi

        if grep -q "MODULE_TYPE    =" $file; then
            sed -i -e 's/MODULE_TYPE    =/MODULE_TYPE                    =/g' $file
        fi

        if grep -q "VERSION_STRING =" $file; then
            sed -i -e 's/VERSION_STRING =/VERSION_STRING                 =/g' $file
        fi

        if grep -q "ENTRY_POINT    =" $file; then
            sed -i -e 's/ENTRY_POINT    =/ENTRY_POINT                    =/g' $file
        fi

        if grep -q "   RAW|" $file; then
            sed -i -e 's/   RAW|/  RAW|/g' $file
        fi

        if grep -q "   TE|" $file; then
            sed -i -e 's/   TE|/  TE|/g' $file
        fi

        if grep -q "   DXE_DEPEX|" $file; then
            sed -i -e 's/   DXE_DEPEX|/  DXE_DEPEX|/g' $file
        fi

        if grep -q "   PE32|" $file; then
            sed -i -e 's/   PE32|/  PE32|/g' $file
        fi

        if grep -q "# AUTOGEN ENDS" $file; then
            if ! grep -q "Depex" $file; then
                sed -i -e :a -e '$d;N;2,3ba' -e 'P;D' $file
            else
                sed -i -e :a -e '$d;N;2,2ba' -e 'P;D' $file
            fi
        fi

        if ! grep -q "Depex" $file; then
            if grep -q "DXE_DRIVER" $file; then
                sed -i -e 's/DXE_DRIVER/UEFI_DRIVER/g' $file
            fi
        fi
    fi
done

for file in ./*/*/*/*/*/*; do
    if [[ $file == *".inf"* ]]; then
        if grep -q "AUTOGENERATED BY UEFIReader" $file; then
            sed -i 1,6d $file
        fi

        if grep -q "INF_VERSION    =" $file; then
            sed -i -e 's/INF_VERSION    =/INF_VERSION                    =/g' $file
        fi

        if grep -q "BASE_NAME      =" $file; then
            sed -i -e 's/BASE_NAME      =/BASE_NAME                      =/g' $file
        fi

        if grep -q "FILE_GUID      =" $file; then
            sed -i -e 's/FILE_GUID      =/FILE_GUID                      =/g' $file
        fi

        if grep -q "MODULE_TYPE    =" $file; then
            sed -i -e 's/MODULE_TYPE    =/MODULE_TYPE                    =/g' $file
        fi

        if grep -q "VERSION_STRING =" $file; then
            sed -i -e 's/VERSION_STRING =/VERSION_STRING                 =/g' $file
        fi

        if grep -q "ENTRY_POINT    =" $file; then
            sed -i -e 's/ENTRY_POINT    =/ENTRY_POINT                    =/g' $file
        fi

        if grep -q "   RAW|" $file; then
            sed -i -e 's/   RAW|/  RAW|/g' $file
        fi

        if grep -q "   TE|" $file; then
            sed -i -e 's/   TE|/  TE|/g' $file
        fi

        if grep -q "   DXE_DEPEX|" $file; then
            sed -i -e 's/   DXE_DEPEX|/  DXE_DEPEX|/g' $file
        fi

        if grep -q "   PE32|" $file; then
            sed -i -e 's/   PE32|/  PE32|/g' $file
        fi

        if grep -q "# AUTOGEN ENDS" $file; then
            if ! grep -q "Depex" $file; then
                sed -i -e :a -e '$d;N;2,3ba' -e 'P;D' $file
            else
                sed -i -e :a -e '$d;N;2,2ba' -e 'P;D' $file
            fi
        fi

        if ! grep -q "Depex" $file; then
            if grep -q "DXE_DRIVER" $file; then
                sed -i -e 's/DXE_DRIVER/UEFI_DRIVER/g' $file
            fi
        fi
    fi
done

for file in ./*/*/*/*/*/*/*; do
    if [[ $file == *".inf"* ]]; then
        if grep -q "AUTOGENERATED BY UEFIReader" $file; then
            sed -i 1,6d $file
        fi

        if grep -q "INF_VERSION    =" $file; then
            sed -i -e 's/INF_VERSION    =/INF_VERSION                    =/g' $file
        fi

        if grep -q "BASE_NAME      =" $file; then
            sed -i -e 's/BASE_NAME      =/BASE_NAME                      =/g' $file
        fi

        if grep -q "FILE_GUID      =" $file; then
            sed -i -e 's/FILE_GUID      =/FILE_GUID                      =/g' $file
        fi

        if grep -q "MODULE_TYPE    =" $file; then
            sed -i -e 's/MODULE_TYPE    =/MODULE_TYPE                    =/g' $file
        fi

        if grep -q "VERSION_STRING =" $file; then
            sed -i -e 's/VERSION_STRING =/VERSION_STRING                 =/g' $file
        fi

        if grep -q "ENTRY_POINT    =" $file; then
            sed -i -e 's/ENTRY_POINT    =/ENTRY_POINT                    =/g' $file
        fi

        if grep -q "   RAW|" $file; then
            sed -i -e 's/   RAW|/  RAW|/g' $file
        fi

        if grep -q "   TE|" $file; then
            sed -i -e 's/   TE|/  TE|/g' $file
        fi

        if grep -q "   DXE_DEPEX|" $file; then
            sed -i -e 's/   DXE_DEPEX|/  DXE_DEPEX|/g' $file
        fi

        if grep -q "   PE32|" $file; then
            sed -i -e 's/   PE32|/  PE32|/g' $file
        fi

        if grep -q "# AUTOGEN ENDS" $file; then
            if ! grep -q "Depex" $file; then
                sed -i -e :a -e '$d;N;2,3ba' -e 'P;D' $file
            else
                sed -i -e :a -e '$d;N;2,2ba' -e 'P;D' $file
            fi
        fi

        if ! grep -q "Depex" $file; then
            if grep -q "DXE_DRIVER" $file; then
                sed -i -e 's/DXE_DRIVER/UEFI_DRIVER/g' $file
            fi
        fi
    fi
done

echo "Clean Up Finisched!"
