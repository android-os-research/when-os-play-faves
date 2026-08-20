.class public Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V
    .registers 2

    .line 2961
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 2963
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$mevaluateNetworkFromDatabase(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    return-void
.end method
