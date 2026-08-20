.class public Lcom/samsung/android/securefolder/fwwrapper/EnvironmentWrapper;
.super Ljava/lang/Object;
.source "EnvironmentWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .registers 2

    .line 9
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 13
    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
