.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# static fields
.field public static final TYPE_ACCESSIBILITY_SERVICE:I = 0x1

.field public static final TYPE_ACCESSIBILITY_SETTINGS:I = 0x2

.field public static final TYPE_OTHER_SETTINGS:I = 0x3


# instance fields
.field public actionType:I

.field public componentName:Ljava/lang/String;

.field public exclusiveListSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public needNotify:Z

.field public setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcanTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->canTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetType(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 4

    .line 724
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings-IA;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 731
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public final canTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 5

    .line 775
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTurnOnFeature() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 778
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 779
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 780
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    iget-object v2, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 781
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 782
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canTurnOnFeature() returns false : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is on"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_5f
    const/4 p0, 0x1

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 4

    .line 750
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 751
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x0

    return p0

    .line 757
    :cond_18
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettings(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result p0

    return p0
.end method

.method public final getType()I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    return p0
.end method

.method public final isNotifyNeeded()Z
    .registers 1

    .line 746
    iget-boolean p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->needNotify:Z

    return p0
.end method

.method public final turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 7

    .line 762
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 764
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 766
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->-$$Nest$fgetrawKey(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v0, "enabled_accessibility_services"

    .line 767
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    goto :goto_3d

    .line 770
    :cond_38
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    :goto_3d
    return-void
.end method
