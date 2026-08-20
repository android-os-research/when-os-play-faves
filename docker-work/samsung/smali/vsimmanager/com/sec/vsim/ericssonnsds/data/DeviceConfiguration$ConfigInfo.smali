.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$ConfigInfo;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigInfo"
.end annotation


# instance fields
.field public mConfigRefreshOnPowerUp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configRefreshOnPowerUp"
    .end annotation
.end field

.field public mConfigRefreshSIMSwap:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configRefreshSIMSwap"
    .end annotation
.end field

.field public mConfigRefreshTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configRefreshTime"
    .end annotation
.end field

.field public mMustUseFirstTime:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mustUseFirstTime"
    .end annotation
.end field

.field public mMustUseForUpdate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mustUseForUpdate"
    .end annotation
.end field

.field public mOverwriteConfigVersioLessThan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "overwrite_config_version_less_than"
    .end annotation
.end field

.field public mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    .line 52
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$ConfigInfo;->this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
