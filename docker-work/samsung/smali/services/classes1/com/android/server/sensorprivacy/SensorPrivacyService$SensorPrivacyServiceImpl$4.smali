.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showConfirmDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic val$sensor:I

.field public final synthetic val$source:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$UeQBkbZIcilFY68iZ7DZe-0rgO0(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;IIILjava/lang/Integer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->lambda$onClick$0(IIILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)V
    .registers 5

    .line 960
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$userId:I

    iput p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$source:I

    iput p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$sensor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(IIILjava/lang/Integer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_1c

    .line 973
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 963
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 964
    iget p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$userId:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_10

    .line 966
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 968
    :cond_10
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object p2, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 970
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showConfirmDialog parentId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$sensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object p2, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$source:I

    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;->val$sensor:I

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;III)V

    invoke-static {p2, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method
