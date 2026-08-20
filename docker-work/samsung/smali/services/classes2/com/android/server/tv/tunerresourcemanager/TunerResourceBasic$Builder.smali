.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final mHandle:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    .registers 2

    .line 93
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    return-object v0
.end method
