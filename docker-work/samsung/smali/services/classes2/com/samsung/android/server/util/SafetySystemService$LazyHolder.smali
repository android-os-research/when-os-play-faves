.class public Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;
.super Ljava/lang/Object;
.source "SafetySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/util/SafetySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/samsung/android/server/util/SafetySystemService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/samsung/android/server/util/SafetySystemService;

    invoke-direct {v0}, Lcom/samsung/android/server/util/SafetySystemService;-><init>()V

    sput-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sInstance:Lcom/samsung/android/server/util/SafetySystemService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
