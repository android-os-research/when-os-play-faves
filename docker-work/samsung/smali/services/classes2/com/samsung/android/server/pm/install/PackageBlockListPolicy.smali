.class public final Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;
.super Ljava/lang/Object;
.source "PackageBlockListPolicy.java"


# static fields
.field public static final BLOCK_LDU_PACKAGE_PATH:Ljava/lang/String; = "/system/etc/ldu_blocklist.xml"

.field public static sLduBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .registers 3

    .line 18
    sget-object v0, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    if-nez v0, :cond_16

    .line 19
    new-instance v0, Lcom/samsung/android/server/pm/install/PmConfigParser;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PmConfigParser;-><init>()V

    const-string v1, "/system/etc/ldu_blocklist.xml"

    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 25
    :cond_16
    sget-object v0, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
