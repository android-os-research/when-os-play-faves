.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppletProperties"
.end annotation


# instance fields
.field public adminId:I

.field public aid:[B

.field public appletLocation:Ljava/lang/String;

.field public pluginName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;I)V
    .registers 5

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    .line 1016
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    .line 1017
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    .line 1018
    iput p4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    return-void
.end method
