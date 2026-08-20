.class public Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartthings/SmartThingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartthings/SmartThingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartthings/SmartThingsService;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 43
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_20

    .line 47
    :cond_1b
    iget-object p0, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-static {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->-$$Nest$mbackgroundWhitelist(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V

    :goto_20
    return-void
.end method
