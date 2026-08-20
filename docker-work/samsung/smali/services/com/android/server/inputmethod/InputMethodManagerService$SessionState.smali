.class public Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionState"
.end annotation


# instance fields
.field public channel:Landroid/view/InputChannel;

.field public final client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field public final method:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public session:Lcom/android/internal/view/IInputMethodSession;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 5

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 641
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 642
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 643
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionState{uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 631
    invoke-static {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->getBinderIdentityHashCode(Lcom/android/server/inputmethod/IInputMethodInvoker;)I

    move-result v1

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 633
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
