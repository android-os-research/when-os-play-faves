.class public Lcom/android/server/samsungnotes/SamsungNotesService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungNotesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/samsungnotes/SamsungNotesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/samsungnotes/SamsungNotesService$UpdateReceiver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/samsungnotes/SamsungNotesService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 44
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    return-void

    :cond_a
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_1e

    .line 52
    :cond_1b
    invoke-static {p1}, Lcom/android/server/samsungnotes/SamsungNotesService;->-$$Nest$smbackgroundAllowlist(Landroid/content/Context;)V

    :goto_1e
    return-void
.end method
