.class public Lcom/samsung/android/server/packagefeature/PackageFeatureData;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "PackageFeatureData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String;

.field public static final EXTRA_STRING_ALLOW_LIST:Ljava/lang/String; = "w"

.field public static final EXTRA_STRING_BLOCK_LIST:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 29
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p2, :cond_8

    .line 41
    sget-object p2, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    .line 43
    :cond_8
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
