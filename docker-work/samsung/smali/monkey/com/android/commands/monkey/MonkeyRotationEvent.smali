.class public Lcom/android/commands/monkey/MonkeyRotationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyRotationEvent.java"


# instance fields
.field private final mPersist:Z

.field private final mRotationDegree:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "degree"    # I
    .param p2, "persist"    # Z

    .line 39
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    iput p1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    .line 41
    iput-boolean p2, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    .line 42
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 46
    if-lez p3, :cond_28

    .line 47
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":Sending rotation degree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 53
    :cond_28
    :try_start_28
    iget v0, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 54
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    if-nez v0, :cond_34

    .line 55
    invoke-interface {p1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_36

    .line 57
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 58
    :catch_36
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method
