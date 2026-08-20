.class public Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationId"
.end annotation


# instance fields
.field public final mId:I

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicy;I)V
    .registers 3

    .line 7151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 7153
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return-void
.end method


# virtual methods
.method public final buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .registers 4

    .line 7174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkPolicy:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 7159
    :cond_4
    instance-of v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 7160
    :cond_a
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 7161
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getId()I
    .registers 1

    .line 7182
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 7178
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7166
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
