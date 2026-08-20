.class public Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/firewall/IntentFirewall$AMSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentFirewallInterface"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 7277
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6

    .line 7281
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public getAMSLock()Ljava/lang/Object;
    .registers 1

    .line 7287
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method
