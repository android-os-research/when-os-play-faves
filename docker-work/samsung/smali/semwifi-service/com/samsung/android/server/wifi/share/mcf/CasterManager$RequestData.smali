.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
.super Ljava/lang/Object;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestData"
.end annotation


# instance fields
.field configKey:Ljava/lang/String;

.field contactKey:Ljava/lang/String;

.field mcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/McfDevice;)V
    .registers 4

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    .line 786
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    .line 787
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-void
.end method
