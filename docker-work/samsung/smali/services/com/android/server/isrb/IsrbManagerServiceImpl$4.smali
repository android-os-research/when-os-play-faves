.class public Lcom/android/server/isrb/IsrbManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "IsrbManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 237
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.isrb.SYSTEM_UPDATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
