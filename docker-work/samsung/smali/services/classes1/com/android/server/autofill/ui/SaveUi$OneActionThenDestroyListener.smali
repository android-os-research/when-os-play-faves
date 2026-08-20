.class public Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;
.super Ljava/lang/Object;
.source "SaveUi.java"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/SaveUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneActionThenDestroyListener"
.end annotation


# instance fields
.field public mDone:Z

.field public final mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

.field public final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .registers 4

    .line 137
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onCancel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_21

    return-void

    .line 141
    :cond_21
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 146
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onDestroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_21

    return-void

    :cond_21
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 151
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onDestroy()V

    return-void
.end method

.method public onSave()V
    .registers 3

    .line 128
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onSave(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_21

    return-void

    .line 132
    :cond_21
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onSave()V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    .line 156
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.startIntentSender(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_21

    return-void

    .line 160
    :cond_21
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
