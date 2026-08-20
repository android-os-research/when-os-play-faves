.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;
.super Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;-><init>()V

    return-void
.end method
