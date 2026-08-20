.class public Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;
.super Ljava/lang/Object;
.source "CustomLetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CustomLetterboxConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/android/server/wm/CustomLetterboxConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration-IA;)V

    sput-object v0, Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;->sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
