.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextClassifierSettingsListener"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mServicePackageOverride:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V
    .registers 3

    .line 1169
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1171
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 1183
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    .line 1184
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p1

    .line 1185
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 1188
    :cond_13
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 1189
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$monTextClassifierServicePackageOverrideChanged(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public registerObserver()V
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1177
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string/jumbo v1, "textclassifier"

    .line 1175
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
