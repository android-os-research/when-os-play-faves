.class public Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final provider:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 197
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 4

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 205
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 206
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 6

    .line 216
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-eq v1, v3, :cond_d

    return v2

    .line 222
    :cond_d
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_1a

    .line 225
    :cond_14
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    :goto_1a
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez p1, :cond_20

    move p0, v1

    goto :goto_26

    .line 231
    :cond_20
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_26
    if-eqz v0, :cond_2b

    if-eqz p0, :cond_2b

    move v2, v1

    :cond_2b
    return v2
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v1, :cond_c

    const-string v1, "ALL ACCS"

    goto :goto_10

    :cond_c
    invoke-static {v1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_1e

    const-string v1, "ALL PDRS"

    :cond_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v1, :cond_c

    const-string v1, "ALL ACCS"

    goto :goto_e

    :cond_c
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_1c

    const-string v1, "ALL PDRS"

    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
