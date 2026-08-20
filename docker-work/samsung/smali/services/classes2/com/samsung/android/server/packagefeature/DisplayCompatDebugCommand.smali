.class public Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "PackageFeatureDebugCommand.java"


# static fields
.field public static final ALLOW_LIST:Ljava/lang/String; = "allowlist"

.field public static final BLOCK_LIST:Ljava/lang/String; = "blocklist"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "-setForceDisplayCompatMode"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "blocklist"

    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "b"

    goto :goto_e

    :cond_b
    const-string/jumbo p0, "w"

    :goto_e
    return-object p0
.end method

.method public assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 97
    array-length v0, p2

    const-string v1, "blocklist|allowlist"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_26

    aget-object v0, p2, v2

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    aget-object p2, p2, v0

    if-nez p2, :cond_11

    goto :goto_26

    :cond_11
    const-string v3, "allowlist"

    .line 102
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "blocklist"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 103
    invoke-virtual {p0, p1, p3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_25
    return v0

    .line 98
    :cond_26
    :goto_26
    invoke-virtual {p0, p1, p3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
