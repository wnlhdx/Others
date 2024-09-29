using Godot;
using System;

public partial class Main : Node2D
{

	private Paddle _paddle1;
	private Paddle _paddle2;
	private Ball _ball;
	private Gravity _gravity;

	public override void _Ready()
	{
		_paddle1 = GetNode<Paddle>("Paddle1");
		_paddle2 = GetNode<Paddle>("Paddle2");
		_ball = GetNode<Ball>("Ball");
		_gravity = GetNode<Gravity>("Gravity");

		// 设置初始值
		_ball.SetInitialVelocity(new Vector2(1, 1));
	}

	public override void _Process(float delta)
	{
		// 检测玩家输入，移动球拍
		_paddle1.HandleInput("ui_up", "ui_down", delta);
		_paddle2.HandleInput("ui_left", "ui_right", delta);

		// 更新球的运动
		_ball.Move(delta);

		// 处理碰撞和引力
		if (_paddle1.IsCollidingWith(_ball) || _paddle2.IsCollidingWith(_ball))
		{
			_ball.Bounce();
		}

		_ball.ApplyGravity(_gravity, delta);
	}
}
