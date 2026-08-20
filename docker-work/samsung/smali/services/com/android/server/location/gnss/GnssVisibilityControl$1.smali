.class public Lcom/android/server/location/gnss/GnssVisibilityControl$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    goto :goto_3b

    :sswitch_10
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    packed-switch v0, :pswitch_data_60

    goto :goto_4c

    .line 187
    :pswitch_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 188
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-static {p0, p2, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->-$$Nest$mhandleProxyAppPackageUpdate(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return-void

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x304ed112 -> :sswitch_31
        0xa480416 -> :sswitch_26
        0x1f50b9c2 -> :sswitch_1b
        0x5c1076e2 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method
