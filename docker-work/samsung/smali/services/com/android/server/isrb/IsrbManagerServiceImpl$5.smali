.class public Lcom/android/server/isrb/IsrbManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "IsrbManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 244
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    const-string p1, "IsrbManagerServiceImpl"

    const-string/jumbo v0, "showSystemErrDialog() dismissed"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->-$$Nest$fputmIsSystemErrPopup(Lcom/android/server/isrb/IsrbManagerServiceImpl;Z)V

    .line 249
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->setTipsTime()V

    return-void
.end method
