.class public Lcom/android/server/wm/TspStateController$TspDebug;
.super Ljava/lang/Object;
.source "TspStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TspStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TspDebug"
.end annotation


# instance fields
.field public mEnabled:Z

.field public mHoleCommand:Ljava/lang/String;

.field public mInitDisplayHeight:I

.field public mInitDisplayWidth:I

.field public mLandCommand:Ljava/lang/String;

.field public mLastCommand:Ljava/lang/String;

.field public mLastNoteMode:Ljava/lang/String;

.field public mPortCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TspStateController$TspDebug;->setInitDisplaySize(II)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 2

    .line 832
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    return-void
.end method

.method public setInitDisplaySize(II)V
    .registers 3

    .line 827
    iput p1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    .line 828
    iput p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    return-void
.end method

.method public updateDebugString()Ljava/lang/StringBuilder;
    .registers 4

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    iget v1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    iget v1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 811
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public updateTspState(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    const/4 v0, 0x3

    if-eq p3, v0, :cond_10

    const/4 v0, 0x6

    if-eq p3, v0, :cond_d

    goto :goto_1e

    .line 778
    :cond_d
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    goto :goto_1e

    .line 791
    :cond_10
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    .line 792
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    goto :goto_1e

    .line 786
    :cond_15
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    .line 787
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    goto :goto_1e

    .line 781
    :cond_1a
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    .line 782
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 798
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TspStateController$TspDebug;->writeToSettings(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final writeToSettings(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 818
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    if-eqz v0, :cond_1e

    .line 819
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "setting_last_grip_cmd"

    .line 819
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    const-string/jumbo p2, "setting_last_note_mode"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1e
    return-void
.end method
