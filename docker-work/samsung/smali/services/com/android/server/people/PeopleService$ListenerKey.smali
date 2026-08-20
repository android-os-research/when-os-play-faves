.class public Lcom/android/server/people/PeopleService$ListenerKey;
.super Ljava/lang/Object;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerKey"
.end annotation


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mShortcutId:Ljava/lang/String;

.field public final mUserId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 374
    iput-object p3, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 391
    check-cast p1, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 392
    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    if-ne v0, v1, :cond_24

    .line 393
    invoke-virtual {p1}, Lcom/android/server/people/PeopleService$ListenerKey;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/Integer;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
