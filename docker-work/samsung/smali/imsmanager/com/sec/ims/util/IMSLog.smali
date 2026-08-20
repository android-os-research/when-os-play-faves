.class public Lcom/sec/ims/util/IMSLog;
.super Ljava/lang/Object;
.source "IMSLog.java"


# static fields
.field private static SALES_CODE:Ljava/lang/String;

.field private static final SHIP_BUILD:Z

.field private static mShowSLogInShipBuildSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    nop

    .line 9
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/util/IMSLog;->SHIP_BUILD:Z

    .line 10
    const-string v0, "persist.omc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/IMSLog;->SALES_CODE:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 14
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/IMSLog;->SALES_CODE:Ljava/lang/String;

    .line 18
    :cond_29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    .line 21
    const-string v1, "ATX"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    const-string v1, "OMX"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    const-string v1, "VDR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    const-string v1, "VDP"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    const-string v1, "VOP"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checker(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_4
    invoke-static {}, Lcom/sec/ims/util/IMSLog;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    const-string v0, "xxxxx"

    return-object v0

    .line 38
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isShipBuild()Z
    .registers 2

    .line 42
    sget-boolean v0, Lcom/sec/ims/util/IMSLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/sec/ims/util/IMSLog;->mShowSLogInShipBuildSet:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/util/IMSLog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
