.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    }
.end annotation


# instance fields
.field public activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

.field public config:Landroid/media/soundtrigger/RecognitionConfig;

.field public final description:Ljava/lang/String;

.field public final parameterSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/soundtrigger/ModelParameterRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetparameterSupport(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/soundtrigger/PhraseSoundModel;)V
    .registers 3

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    const/16 v0, 0x10

    .line 258
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/soundtrigger/SoundModel;)V
    .registers 3

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    const/16 v0, 0x10

    .line 254
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkSupported(I)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 305
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/soundtrigger/ModelParameterRange;

    if-eqz p0, :cond_1b

    return-void

    .line 307
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Paramater is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Parameter has not been checked for support."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSupported(II)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 322
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/soundtrigger/ModelParameterRange;

    if-eqz p0, :cond_25

    .line 326
    iget p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    iget p0, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    const-string/jumbo v0, "value"

    invoke-static {p2, p1, p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void

    .line 324
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Paramater is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Parameter has not been checked for support."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
