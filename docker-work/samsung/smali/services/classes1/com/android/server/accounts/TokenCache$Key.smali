.class public Lcom/android/server/accounts/TokenCache$Key;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final packageName:Ljava/lang/String;

.field public final sigDigest:[B

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 55
    iput-object p2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 62
    instance-of v1, p1, Lcom/android/server/accounts/TokenCache$Key;

    if-eqz v1, :cond_32

    .line 63
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    .line 64
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    iget-object p1, p1, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 67
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
