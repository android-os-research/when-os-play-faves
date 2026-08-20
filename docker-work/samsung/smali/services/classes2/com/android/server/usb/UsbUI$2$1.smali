.class public Lcom/android/server/usb/UsbUI$2$1;
.super Ljava/lang/Object;
.source "UsbUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbUI$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/usb/UsbUI$2;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI$2;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$2$1;->this$1:Lcom/android/server/usb/UsbUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_5
    return-void
.end method
