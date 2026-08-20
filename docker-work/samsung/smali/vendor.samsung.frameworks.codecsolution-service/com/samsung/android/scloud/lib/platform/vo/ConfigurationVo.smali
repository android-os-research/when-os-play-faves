.class public Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;
.super Ljava/lang/Object;
.source "ConfigurationVo.java"


# instance fields
.field public final appId:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final receiverPackageName:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "receiverPackageName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appVersion:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->token:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->receiverPackageName:Ljava/lang/String;

    .line 36
    return-void
.end method
