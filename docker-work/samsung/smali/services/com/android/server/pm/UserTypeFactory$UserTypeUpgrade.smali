.class public Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTypeUpgrade"
.end annotation


# instance fields
.field public final mFromType:Ljava/lang/String;

.field public final mToType:Ljava/lang/String;

.field public final mUpToVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    .line 606
    iput-object p2, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    .line 607
    iput p3, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return-void
.end method


# virtual methods
.method public getFromType()Ljava/lang/String;
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    return-object p0
.end method

.method public getToType()Ljava/lang/String;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    return-object p0
.end method

.method public getUpToVersion()I
    .registers 1

    .line 619
    iget p0, p0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    return p0
.end method
