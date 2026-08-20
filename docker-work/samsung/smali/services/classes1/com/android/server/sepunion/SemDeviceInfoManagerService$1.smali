.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;
.super Ljava/lang/Object;
.source "SemDeviceInfoManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    .line 1108
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoTestModeChanged()V
    .registers 1

    return-void
.end method
