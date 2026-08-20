.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2

    .line 2077
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    :try_start_0
    const-string p0, "edmnativehelperservice"

    .line 2080
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    .line 2084
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_f

    :catch_b
    move-exception p0

    .line 2082
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method
