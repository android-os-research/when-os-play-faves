.class public Lcom/samsung/android/mcf/common/MessageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLING_PID:Ljava/lang/String; = "CALLING_PID"

.field public static final CALLING_UID:Ljava/lang/String; = "CALLING_UID"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallerInfo(Landroid/os/Message;II)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CALLING_PID"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CALLING_UID"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static getCallingPid(Landroid/os/Message;)I
    .registers 2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CALLING_PID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCallingUid(Landroid/os/Message;)I
    .registers 2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CALLING_UID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static makeMessage(IIILandroid/os/Bundle;)Landroid/os/Message;
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    const/16 p0, -0x3e7

    if-eq p2, p0, :cond_e

    iput p2, v0, Landroid/os/Message;->arg2:I

    :cond_e
    if-nez p3, :cond_14

    invoke-static {}, Lcom/samsung/android/mcf/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object p3

    :cond_14
    const p0, 0x125f2a

    const-string p1, "verCode"

    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method
