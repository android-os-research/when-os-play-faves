.class public Lorg/junit/validator/AnnotationValidatorFactory;
.super Ljava/lang/Object;
.source "AnnotationValidatorFactory.java"


# static fields
.field private static final VALIDATORS_FOR_ANNOTATION_TYPES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/junit/validator/ValidateWith;",
            "Lorg/junit/validator/AnnotationValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/junit/validator/AnnotationValidatorFactory;->VALIDATORS_FOR_ANNOTATION_TYPES:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnnotationValidator(Lorg/junit/validator/ValidateWith;)Lorg/junit/validator/AnnotationValidator;
    .registers 8
    .param p1, "validateWithAnnotation"    # Lorg/junit/validator/ValidateWith;

    .line 24
    sget-object v0, Lorg/junit/validator/AnnotationValidatorFactory;->VALIDATORS_FOR_ANNOTATION_TYPES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/validator/AnnotationValidator;

    .line 25
    .local v1, "validator":Lorg/junit/validator/AnnotationValidator;
    if-eqz v1, :cond_b

    .line 26
    return-object v1

    .line 29
    :cond_b
    invoke-interface {p1}, Lorg/junit/validator/ValidateWith;->value()Ljava/lang/Class;

    move-result-object v2

    .line 31
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/validator/AnnotationValidator;>;"
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/validator/AnnotationValidator;

    .line 32
    .local v3, "annotationValidator":Lorg/junit/validator/AnnotationValidator;
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/validator/AnnotationValidator;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    return-object v0

    .line 34
    .end local v3    # "annotationValidator":Lorg/junit/validator/AnnotationValidator;
    :catch_1f
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception received when creating AnnotationValidator class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
