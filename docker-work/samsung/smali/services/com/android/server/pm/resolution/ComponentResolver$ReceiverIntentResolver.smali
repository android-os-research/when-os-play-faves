.class public final Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiverIntentResolver"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 3

    .line 1308
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 4

    .line 1315
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-void
.end method


# virtual methods
.method public getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1320
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
