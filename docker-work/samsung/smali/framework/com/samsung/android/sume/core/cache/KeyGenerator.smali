.class public Lcom/samsung/android/sume/core/cache/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSimpleKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "token"    # Ljava/lang/String;

    .line 7
    const-string v0, "[:/]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
