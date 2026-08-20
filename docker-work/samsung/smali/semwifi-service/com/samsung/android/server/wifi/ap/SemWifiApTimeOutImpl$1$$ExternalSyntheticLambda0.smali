.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->$r8$lambda$GqduIO2E6wdI-kxR3sZVuK2rs-Y(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;Landroid/content/Intent;)V

    return-void
.end method
