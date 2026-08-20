.class public final Lcom/android/server/pm/VerificationInfo;
.super Ljava/lang/Object;
.source "VerificationInfo.java"


# instance fields
.field public final mInstallerUid:I

.field public final mOriginatingUid:I

.field public final mOriginatingUri:Landroid/net/Uri;

.field public final mReferrer:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    .line 37
    iput p3, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    .line 38
    iput p4, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "mOriginatingUri="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v1, :cond_2c

    const-string v1, ",mReferrer="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v1, ",mOriginatingUid="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mInstallerUid="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p0, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
