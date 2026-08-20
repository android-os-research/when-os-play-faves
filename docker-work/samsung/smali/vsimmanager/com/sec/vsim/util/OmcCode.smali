.class public Lcom/sec/vsim/util/OmcCode;
.super Ljava/lang/Object;
.source "OmcCode.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OmcCode"

.field private static final OMC_CODE_FILE:Ljava/lang/String; = "/system/omc/SW_Configuration.xml"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "persist.omc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 23
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_14
    return-object v0
.end method

.method public static getNWCode()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-static {}, Lcom/sec/vsim/util/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.csc.omcnw_code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNWPath()Ljava/lang/String;
    .registers 2

    .line 46
    invoke-static {}, Lcom/sec/vsim/util/OmcCode;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omcnw_path"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "persist.sys.omc_path"

    const-string v1, "/system/csc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .registers 4

    .line 66
    const-string v0, "persist.omc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OmcCode"

    if-eqz v1, :cond_1b

    .line 69
    const-string v1, "OMC is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "salesCode is loaded :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0
.end method

.method public static isOmcModel()Z
    .registers 2

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/omc/SW_Configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 55
    const/4 v1, 0x1

    return v1

    .line 57
    :cond_f
    const/4 v1, 0x0

    return v1
.end method
