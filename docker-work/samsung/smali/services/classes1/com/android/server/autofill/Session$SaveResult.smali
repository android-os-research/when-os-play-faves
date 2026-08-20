.class public final Lcom/android/server/autofill/Session$SaveResult;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveResult"
.end annotation


# instance fields
.field public mLogSaveShown:Z

.field public mRemoveSession:Z

.field public mSaveDialogNotShowReason:I


# direct methods
.method public constructor <init>(ZZI)V
    .registers 4

    .line 4125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4126
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 4127
    iput-boolean p2, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    .line 4128
    iput p3, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return-void
.end method


# virtual methods
.method public getNoSaveUiReason()I
    .registers 1

    .line 4174
    iget p0, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return p0
.end method

.method public isLogSaveShown()Z
    .registers 1

    .line 4137
    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    return p0
.end method

.method public isRemoveSession()Z
    .registers 1

    .line 4155
    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    return p0
.end method

.method public setLogSaveShown(Z)V
    .registers 2

    .line 4146
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    return-void
.end method

.method public setRemoveSession(Z)V
    .registers 2

    .line 4164
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    return-void
.end method

.method public setSaveDialogNotShowReason(I)V
    .registers 2

    .line 4183
    iput p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveResult: [logSaveShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", removeSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", saveDialogNotShowReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
