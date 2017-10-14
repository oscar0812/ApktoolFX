.class public interface abstract Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionBarLayoutDelegate"
.end annotation


# virtual methods
.method public abstract needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
.end method

.method public abstract needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
.end method

.method public abstract needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
.end method

.method public abstract onPreIme()Z
.end method

.method public abstract onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
.end method
