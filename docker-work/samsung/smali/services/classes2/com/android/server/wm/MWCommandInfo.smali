.class public interface abstract annotation Lcom/android/server/wm/MWCommandInfo;
.super Ljava/lang/Object;
.source "MWCommandInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/server/wm/MWCommandInfo;
        cmd = ""
        supportsReleaseBuild = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract cmd()Ljava/lang/String;
.end method

.method public abstract supportsReleaseBuild()Z
.end method
