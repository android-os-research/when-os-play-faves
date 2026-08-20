.class public Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;
.super Ljava/lang/Object;
.source "SemUnionMainServiceImpl.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SepUnionServiceCreator"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;)V
    .registers 3

    .line 263
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 270
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetsUnionIbinderMap()Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method
