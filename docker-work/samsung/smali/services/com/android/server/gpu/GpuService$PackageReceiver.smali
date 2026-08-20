.class public final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$PackageReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmProdDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v1}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmDevDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_21

    if-nez p1, :cond_21

    return-void

    .line 186
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6a

    goto :goto_51

    :sswitch_31
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_51

    :cond_3a
    const/4 v1, 0x2

    goto :goto_51

    :sswitch_3c
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto :goto_51

    :cond_45
    const/4 v1, 0x1

    goto :goto_51

    :sswitch_47
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    packed-switch v1, :pswitch_data_78

    goto :goto_69

    :pswitch_55
    if-eqz v0, :cond_62

    .line 191
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->-$$Nest$mfetchProductionDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V

    .line 192
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->-$$Nest$msetDenylist(Lcom/android/server/gpu/GpuService;)V

    goto :goto_69

    :cond_62
    if-eqz p1, :cond_69

    .line 194
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->-$$Nest$mfetchPrereleaseDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V

    :cond_69
    :goto_69
    return-void

    :sswitch_data_6a
    .sparse-switch
        0xa480416 -> :sswitch_47
        0x1f50b9c2 -> :sswitch_3c
        0x5c1076e2 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method
