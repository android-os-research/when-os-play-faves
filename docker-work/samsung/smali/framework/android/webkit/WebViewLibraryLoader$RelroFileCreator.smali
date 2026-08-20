.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 63
    const-string v0, "failed to create relro file"

    const-string v1, "error notifying update service"

    const/4 v2, 0x0

    .line 64
    .local v2, "result":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v3

    .line 66
    .local v3, "is64Bit":Z
    const/4 v4, 0x0

    :try_start_e
    array-length v5, p0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b5

    aget-object v5, p0, v4

    if-eqz v5, :cond_b5

    const/4 v5, 0x1

    aget-object v6, p0, v5

    if-nez v6, :cond_1d

    goto/16 :goto_b5

    .line 70
    :cond_1d
    aget-object v6, p0, v4

    .line 71
    .local v6, "packageName":Ljava/lang/String;
    aget-object v5, p0, v5

    .line 72
    .local v5, "libraryFileName":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RelroFileCreator (64bit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetsAddressSpaceReserved()Z

    move-result v7

    if-nez v7, :cond_7b

    .line 75
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "can\'t create relro file; address space not reserved"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_f0

    .line 90
    :try_start_5e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_65} :catch_66

    .line 93
    goto :goto_6e

    .line 91
    :catch_66
    move-exception v7

    .line 92
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_6e
    if-nez v2, :cond_77

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_77
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 76
    return-void

    .line 78
    :cond_7b
    :try_start_7b
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v7

    .line 82
    .local v7, "apk":Landroid/app/LoadedApk;
    nop

    .line 83
    if-eqz v3, :cond_8b

    const-string v8, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_8d

    .line 84
    :cond_8b
    const-string v8, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 85
    :goto_8d
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 82
    invoke-static {v5, v8, v9}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v8
    :try_end_95
    .catchall {:try_start_7b .. :try_end_95} :catchall_f0

    move v2, v8

    .line 86
    nop

    .line 90
    .end local v5    # "libraryFileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "apk":Landroid/app/LoadedApk;
    :try_start_97
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_9f

    .line 93
    goto :goto_a7

    .line 91
    :catch_9f
    move-exception v5

    .line 92
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_a7
    if-nez v2, :cond_b0

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_b0
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 67
    :cond_b5
    :goto_b5
    :try_start_b5
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid RelroFileCreator args: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_b5 .. :try_end_d3} :catchall_f0

    .line 90
    :try_start_d3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_da} :catch_db

    .line 93
    goto :goto_e3

    .line 91
    :catch_db
    move-exception v5

    .line 92
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_e3
    if-nez v2, :cond_ec

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_ec
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 68
    return-void

    .line 89
    :catchall_f0
    move-exception v5

    .line 90
    :try_start_f1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_f8} :catch_f9

    .line 93
    goto :goto_101

    .line 91
    :catch_f9
    move-exception v6

    .line 92
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_101
    if-nez v2, :cond_10a

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_10a
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 99
    throw v5
.end method
